@interface _WKContentWorldConfiguration
- (NSString)name;
- (_WKContentWorldConfiguration)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setName:(id)a3;
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

- (void)setName:(id)a3
{
  MEMORY[0x19EB02040](&v8, a3);
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setName:{-[_WKContentWorldConfiguration name](self, "name")}];
  [v4 setAllowAccessToClosedShadowRoots:{-[_WKContentWorldConfiguration allowAccessToClosedShadowRoots](self, "allowAccessToClosedShadowRoots")}];
  [v4 setAllowAutofill:{-[_WKContentWorldConfiguration allowAutofill](self, "allowAutofill")}];
  [v4 setAllowElementUserInfo:{-[_WKContentWorldConfiguration allowElementUserInfo](self, "allowElementUserInfo")}];
  [v4 setDisableLegacyBuiltinOverrides:{-[_WKContentWorldConfiguration disableLegacyBuiltinOverrides](self, "disableLegacyBuiltinOverrides")}];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:-[_WKContentWorldConfiguration name](self forKey:{"name"), @"name"}];
  [a3 encodeBool:-[_WKContentWorldConfiguration allowAccessToClosedShadowRoots](self forKey:{"allowAccessToClosedShadowRoots"), @"allowAccessToClosedShadowRoots"}];
  [a3 encodeBool:-[_WKContentWorldConfiguration allowAutofill](self forKey:{"allowAutofill"), @"allowAutofill"}];
  [a3 encodeBool:-[_WKContentWorldConfiguration allowElementUserInfo](self forKey:{"allowElementUserInfo"), @"allowElementUserInfo"}];
  v5 = [(_WKContentWorldConfiguration *)self disableLegacyBuiltinOverrides];

  [a3 encodeBool:v5 forKey:@"disableLegacyBuiltinOverrides"];
}

- (_WKContentWorldConfiguration)initWithCoder:(id)a3
{
  v4 = [(_WKContentWorldConfiguration *)self init];
  if (v4)
  {
    -[_WKContentWorldConfiguration setName:](v4, "setName:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"name"]);
    -[_WKContentWorldConfiguration setAllowAccessToClosedShadowRoots:](v4, "setAllowAccessToClosedShadowRoots:", [a3 decodeBoolForKey:@"allowAccessToClosedShadowRoots"]);
    -[_WKContentWorldConfiguration setAllowAutofill:](v4, "setAllowAutofill:", [a3 decodeBoolForKey:@"allowAutofill"]);
    -[_WKContentWorldConfiguration setAllowElementUserInfo:](v4, "setAllowElementUserInfo:", [a3 decodeBoolForKey:@"allowElementUserInfo"]);
    -[_WKContentWorldConfiguration setDisableLegacyBuiltinOverrides:](v4, "setDisableLegacyBuiltinOverrides:", [a3 decodeBoolForKey:@"disableLegacyBuiltinOverrides"]);
  }

  return v4;
}

@end