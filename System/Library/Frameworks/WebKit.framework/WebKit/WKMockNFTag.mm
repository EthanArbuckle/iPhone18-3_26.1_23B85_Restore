@interface WKMockNFTag
- (WKMockNFTag)initWithNFTag:(id)tag;
- (WKMockNFTag)initWithType:(unsigned int)type;
- (WKMockNFTag)initWithType:(unsigned int)type tagID:(id)d;
- (void)dealloc;
@end

@implementation WKMockNFTag

- (WKMockNFTag)initWithNFTag:(id)tag
{
  v10.receiver = self;
  v10.super_class = WKMockNFTag;
  v4 = [(WKMockNFTag *)&v10 init];
  if (v4)
  {
    v4->_type = [tag type];
    tagID = [tag tagID];
    v6 = tagID;
    if (tagID)
    {
      v7 = tagID;
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

- (WKMockNFTag)initWithType:(unsigned int)type
{
  v3 = *&type;
  v6 = [(WKMockNFTag *)self initWithType:v3 tagID:v5];
  if (v5)
  {
  }

  return v6;
}

- (WKMockNFTag)initWithType:(unsigned int)type tagID:(id)d
{
  v11.receiver = self;
  v11.super_class = WKMockNFTag;
  v6 = [(WKMockNFTag *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_type = type;
    if (d)
    {
      dCopy = d;
    }

    m_ptr = v7->_tagID.m_ptr;
    v7->_tagID.m_ptr = d;
    if (m_ptr)
    {
    }
  }

  return v7;
}

@end