@interface _WKSessionState
- (NSData)data;
- (_WKSessionState)initWithData:(id)a3;
- (id).cxx_construct;
- (id)_initWithSessionState:(SessionState *)a3;
@end

@implementation _WKSessionState

- (_WKSessionState)initWithData:(id)a3
{
  v8.receiver = self;
  v8.super_class = _WKSessionState;
  v4 = [(_WKSessionState *)&v8 init];
  v6 = v4;
  if (v4 && (WebKit::decodeSessionState(a3, v4 + 1, v5) & 1) == 0)
  {

    return 0;
  }

  return v6;
}

- (id)_initWithSessionState:(SessionState *)a3
{
  v12.receiver = self;
  v12.super_class = _WKSessionState;
  v4 = [(_WKSessionState *)&v12 init];
  v5 = v4;
  if (v4)
  {
    m_size = v4->_sessionState.backForwardListState.items.m_size;
    if (m_size)
    {
      m_buffer = v4->_sessionState.backForwardListState.items.m_buffer;
      v10 = 8 * m_size;
      do
      {
        v11 = *m_buffer;
        *m_buffer = 0;
        if (v11)
        {
          WTF::RefCounted<WebKit::FrameState>::deref(v11);
        }

        ++m_buffer;
        v10 -= 8;
      }

      while (v10);
    }

    WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(&v5->_sessionState, a3);
    val = a3->backForwardListState.currentIndex.var0.__val_;
    v5->_sessionState.backForwardListState.currentIndex.__engaged_ = a3->backForwardListState.currentIndex.__engaged_;
    v5->_sessionState.backForwardListState.currentIndex.var0.__val_ = val;
    v5->_sessionState.renderTreeSize = a3->renderTreeSize;
    WTF::URL::operator=(&v5->_sessionState.provisionalURL, &a3->provisionalURL);
    v5->_sessionState.isAppInitiated = a3->isAppInitiated;
  }

  return v5;
}

- (NSData)data
{
  WebKit::encodeSessionState(&self->_sessionState, &v6);
  v2 = v6;
  v6 = 0;
  if (v2)
  {
    v3 = v2;
    v4 = v6;
    v6 = 0;
    if (v4)
    {
    }
  }

  return v2;
}

- (id).cxx_construct
{
  self->_sessionState.backForwardListState.items.m_buffer = 0;
  self->_sessionState.backForwardListState.currentIndex.__engaged_ = 0;
  *&self->_sessionState.backForwardListState.items.m_capacity = 0;
  self->_sessionState.backForwardListState.currentIndex.var0.__null_state_ = 0;
  WTF::URL::URL(&self->_sessionState.provisionalURL);
  self->_sessionState.isAppInitiated = 1;
  return self;
}

@end