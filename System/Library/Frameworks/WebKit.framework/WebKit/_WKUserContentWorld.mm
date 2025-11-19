@interface _WKUserContentWorld
+ (_WKUserContentWorld)worldWithName:(id)a3;
+ (id)normalWorld;
- (id)_init;
- (id)_initWithContentWorld:(id)a3;
- (id)_initWithName:(id)a3;
@end

@implementation _WKUserContentWorld

- (id)_initWithName:(id)a3
{
  v10.receiver = self;
  v10.super_class = _WKUserContentWorld;
  v4 = [(_WKUserContentWorld *)&v10 init];
  if (v4)
  {
    v5 = [WKContentWorld worldWithName:a3];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    m_ptr = v4->_contentWorld.m_ptr;
    v4->_contentWorld.m_ptr = v6;
    if (m_ptr)
    {
    }
  }

  return v4;
}

- (id)_init
{
  v8.receiver = self;
  v8.super_class = _WKUserContentWorld;
  v2 = [(_WKUserContentWorld *)&v8 init];
  if (v2)
  {
    v3 = +[WKContentWorld pageWorld];
    v4 = v3;
    if (v3)
    {
      v5 = v3;
    }

    m_ptr = v2->_contentWorld.m_ptr;
    v2->_contentWorld.m_ptr = v4;
    if (m_ptr)
    {
    }
  }

  return v2;
}

- (id)_initWithContentWorld:(id)a3
{
  v8.receiver = self;
  v8.super_class = _WKUserContentWorld;
  v4 = [(_WKUserContentWorld *)&v8 init];
  if (v4)
  {
    if (a3)
    {
      v5 = a3;
    }

    m_ptr = v4->_contentWorld.m_ptr;
    v4->_contentWorld.m_ptr = a3;
    if (m_ptr)
    {
    }
  }

  return v4;
}

+ (_WKUserContentWorld)worldWithName:(id)a3
{
  v3 = [[_WKUserContentWorld alloc] _initWithName:a3];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

+ (id)normalWorld
{
  v2 = [[_WKUserContentWorld alloc] _init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

@end