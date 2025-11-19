@interface WKMockNFTag
- (WKMockNFTag)initWithNFTag:(id)a3;
- (WKMockNFTag)initWithType:(unsigned int)a3;
- (WKMockNFTag)initWithType:(unsigned int)a3 tagID:(id)a4;
- (void)dealloc;
@end

@implementation WKMockNFTag

- (WKMockNFTag)initWithNFTag:(id)a3
{
  v10.receiver = self;
  v10.super_class = WKMockNFTag;
  v4 = [(WKMockNFTag *)&v10 init];
  if (v4)
  {
    v4->_type = [a3 type];
    v5 = [a3 tagID];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    m_ptr = v4->_tagID.m_ptr;
    v4->_tagID.m_ptr = v6;
    if (m_ptr)
    {
    }
  }

  return v4;
}

- (void)dealloc
{
  self->_AppData = 0;

  self->_UID = 0;
  v3.receiver = self;
  v3.super_class = WKMockNFTag;
  [(WKMockNFTag *)&v3 dealloc];
}

- (WKMockNFTag)initWithType:(unsigned int)a3
{
  v3 = *&a3;
  v6 = [(WKMockNFTag *)self initWithType:v3 tagID:v5];
  if (v5)
  {
  }

  return v6;
}

- (WKMockNFTag)initWithType:(unsigned int)a3 tagID:(id)a4
{
  v11.receiver = self;
  v11.super_class = WKMockNFTag;
  v6 = [(WKMockNFTag *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_type = a3;
    if (a4)
    {
      v8 = a4;
    }

    m_ptr = v7->_tagID.m_ptr;
    v7->_tagID.m_ptr = a4;
    if (m_ptr)
    {
    }
  }

  return v7;
}

@end