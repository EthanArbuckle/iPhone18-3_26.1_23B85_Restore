@interface WKBrowsingContextHandle
- (BOOL)isEqual:(id)equal;
- (WKBrowsingContextHandle)initWithCoder:(id)coder;
- (id)_initWithPageProxyID:()ObjectIdentifierGeneric<WebKit:()WTF:(unsigned long long>)f :()ObjectIdentifierGeneric<WebCore:()WTF:(unsigned long long>)tF :ObjectIdentifierMainThreadAccessTraits<uint64_t> :PageIdentifierType ObjectIdentifierMainThreadAccessTraits<uint64_t> :WebPageProxyIdentifierType andWebPageID:;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WKBrowsingContextHandle

- (id)_initWithPageProxyID:()ObjectIdentifierGeneric<WebKit:()WTF:(unsigned long long>)f :()ObjectIdentifierGeneric<WebCore:()WTF:(unsigned long long>)tF :ObjectIdentifierMainThreadAccessTraits<uint64_t> :PageIdentifierType ObjectIdentifierMainThreadAccessTraits<uint64_t> :WebPageProxyIdentifierType andWebPageID:
{
  v7.receiver = self;
  v7.super_class = WKBrowsingContextHandle;
  result = [(WKBrowsingContextHandle *)&v7 init];
  if (result)
  {
    *(result + 1) = f;
    *(result + 2) = tF;
  }

  return result;
}

- (unint64_t)hash
{
  m_identifier = self->_pageProxyID.m_value.m_identifier;
  if (m_identifier)
  {
    webPageID = self->_webPageID;
    v10 = 0;
    v11 = 0;
    v4 = (m_identifier >> 5) & 0x7FFF800 ^ ((m_identifier - 1640531527) << 16) ^ (m_identifier - 1640531527);
    v5 = (m_identifier >> 37) & 0x7FFF800 ^ ((v4 + WORD2(m_identifier) + (v4 >> 11)) << 16) ^ (v4 + WORD2(m_identifier) + (v4 >> 11));
    v6 = (webPageID >> 5) & 0x7FFF800 ^ ((v5 + (v5 >> 11) + webPageID) << 16) ^ (v5 + (v5 >> 11) + webPageID);
    v7 = v6 + WORD2(webPageID) + (v6 >> 11);
    LODWORD(webPageID) = (webPageID >> 37) & 0x7FFF800 ^ (v7 << 16);
    v9 = (webPageID ^ v7) + ((webPageID ^ v7) >> 11);
    return WTF::SuperFastHash::hash(&v9);
  }

  else
  {
    result = 158;
    __break(0xC471u);
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  m_identifier = self->_pageProxyID.m_value.m_identifier;
  v6 = m_identifier != 0;
  v7 = *(equal + 1);
  v8 = v7 != 0;
  v9 = m_identifier == v7;
  if (!v6 || !v8)
  {
    v9 = v6 ^ v8 ^ 1;
  }

  return v9 == 1 && self->_webPageID == *(equal + 2);
}

- (void)encodeWithCoder:(id)coder
{
  m_identifier = self->_pageProxyID.m_value.m_identifier;
  if (m_identifier)
  {
    [coder encodeInt64:m_identifier forKey:@"pageProxyID"];
    webPageID = self->_webPageID;

    [coder encodeInt64:webPageID forKey:@"webPageID"];
  }

  else
  {
    __break(0xC471u);
  }
}

- (WKBrowsingContextHandle)initWithCoder:(id)coder
{
  v5 = [coder decodeInt64ForKey:@"pageProxyID"];
  if ((v5 - 1) >= 0xFFFFFFFFFFFFFFFELL || (v6 = v5, v7 = [coder decodeInt64ForKey:@"webPageID"], (v7 - 1) >= 0xFFFFFFFFFFFFFFFELL))
  {
    __break(0xC471u);
    JUMPOUT(0x19D9848ACLL);
  }

  return [(WKBrowsingContextHandle *)self _initWithPageProxyID:v6 andWebPageID:v7];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [WKBrowsingContextHandle allocWithZone:zone];
  if (!self->_pageProxyID.m_value.m_identifier || self->_webPageID - 1 >= 0xFFFFFFFFFFFFFFFELL)
  {
    __break(0xC471u);
    JUMPOUT(0x19D984948);
  }

  return [WKBrowsingContextHandle _initWithPageProxyID:v4 andWebPageID:"_initWithPageProxyID:andWebPageID:"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  if (self->_pageProxyID.m_value.m_identifier)
  {
    return [v3 stringWithFormat:@"<%@: %p; pageProxyID = %llu; webPageID = %llu>", v5, self, self->_pageProxyID.m_value.m_identifier, self->_webPageID];
  }

  result = 155;
  __break(0xC471u);
  return result;
}

@end