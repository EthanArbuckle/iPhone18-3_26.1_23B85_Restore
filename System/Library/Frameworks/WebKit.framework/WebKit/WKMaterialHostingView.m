@interface WKMaterialHostingView
- (WKMaterialHostingView)init;
- (id).cxx_construct;
@end

@implementation WKMaterialHostingView

- (WKMaterialHostingView)init
{
  v11.receiver = self;
  v11.super_class = WKMaterialHostingView;
  v2 = [(WKMaterialHostingView *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69DD250]);
    m_ptr = v2->_contentView.m_ptr;
    v2->_contentView.m_ptr = v3;
    if (m_ptr)
    {

      v5 = v2->_contentView.m_ptr;
    }

    else
    {
      v5 = v3;
    }

    v6 = [WKMaterialHostingSupport hostingView:v5];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    v9 = v2->_hostingView.m_ptr;
    v2->_hostingView.m_ptr = v7;
    if (v9)
    {

      v7 = v2->_hostingView.m_ptr;
    }

    [(WKMaterialHostingView *)v2 addSubview:v7];
  }

  return v2;
}

- (id).cxx_construct
{
  *(self + 51) = 0;
  *(self + 52) = 0;
  return self;
}

@end