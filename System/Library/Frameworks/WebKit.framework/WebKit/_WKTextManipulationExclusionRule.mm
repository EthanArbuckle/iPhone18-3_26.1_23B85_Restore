@interface _WKTextManipulationExclusionRule
- (id).cxx_construct;
- (id)initExclusion:(BOOL)a3 forAttribute:(id)a4 value:(id)a5;
- (id)initExclusion:(BOOL)a3 forClass:(id)a4;
- (id)initExclusion:(BOOL)a3 forElement:(id)a4;
@end

@implementation _WKTextManipulationExclusionRule

- (id)initExclusion:(BOOL)a3 forElement:(id)a4
{
  v11.receiver = self;
  v11.super_class = _WKTextManipulationExclusionRule;
  v6 = [(_WKTextManipulationExclusionRule *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_isExclusion = a3;
    if (a4)
    {
      v8 = a4;
    }

    m_ptr = v7->_elementName.m_ptr;
    v7->_elementName.m_ptr = a4;
    if (m_ptr)
    {
    }
  }

  return v7;
}

- (id)initExclusion:(BOOL)a3 forAttribute:(id)a4 value:(id)a5
{
  v15.receiver = self;
  v15.super_class = _WKTextManipulationExclusionRule;
  v8 = [(_WKTextManipulationExclusionRule *)&v15 init];
  v9 = v8;
  if (v8)
  {
    v8->_isExclusion = a3;
    if (a4)
    {
      v10 = a4;
    }

    m_ptr = v9->_attributeName.m_ptr;
    v9->_attributeName.m_ptr = a4;
    if (m_ptr)
    {
    }

    if (a5)
    {
      v12 = a5;
    }

    v13 = v9->_attributeValue.m_ptr;
    v9->_attributeValue.m_ptr = a5;
    if (v13)
    {
    }
  }

  return v9;
}

- (id)initExclusion:(BOOL)a3 forClass:(id)a4
{
  v11.receiver = self;
  v11.super_class = _WKTextManipulationExclusionRule;
  v6 = [(_WKTextManipulationExclusionRule *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_isExclusion = a3;
    if (a4)
    {
      v8 = a4;
    }

    m_ptr = v7->_className.m_ptr;
    v7->_className.m_ptr = a4;
    if (m_ptr)
    {
    }
  }

  return v7;
}

- (id).cxx_construct
{
  *(self + 1) = 0u;
  *(self + 2) = 0u;
  return self;
}

@end