@interface _WKUserContentWorld
+ (_WKUserContentWorld)worldWithName:(id)name;
+ (id)normalWorld;
- (id)_init;
- (id)_initWithContentWorld:(id)world;
- (id)_initWithName:(id)name;
@end

@implementation _WKUserContentWorld

- (id)_initWithName:(id)name
{
  v10.receiver = self;
  v10.super_class = _WKUserContentWorld;
  v4 = [(_WKUserContentWorld *)&v10 init];
  if (v4)
  {
    v5 = [WKContentWorld worldWithName:name];
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

- (id)_initWithContentWorld:(id)world
{
  v8.receiver = self;
  v8.super_class = _WKUserContentWorld;
  v4 = [(_WKUserContentWorld *)&v8 init];
  if (v4)
  {
    if (world)
    {
      worldCopy = world;
    }

    m_ptr = v4->_contentWorld.m_ptr;
    v4->_contentWorld.m_ptr = world;
    if (m_ptr)
    {
    }
  }

  return v4;
}

+ (_WKUserContentWorld)worldWithName:(id)name
{
  v3 = [[_WKUserContentWorld alloc] _initWithName:name];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

+ (id)normalWorld
{
  _init = [[_WKUserContentWorld alloc] _init];
  v3 = _init;
  if (_init)
  {
    v4 = _init;
  }

  return v3;
}

@end