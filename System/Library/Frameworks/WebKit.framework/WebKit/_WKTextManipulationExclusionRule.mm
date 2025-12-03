@interface _WKTextManipulationExclusionRule
- (id).cxx_construct;
- (id)initExclusion:(BOOL)exclusion forAttribute:(id)attribute value:(id)value;
- (id)initExclusion:(BOOL)exclusion forClass:(id)class;
- (id)initExclusion:(BOOL)exclusion forElement:(id)element;
@end

@implementation _WKTextManipulationExclusionRule

- (id)initExclusion:(BOOL)exclusion forElement:(id)element
{
  v11.receiver = self;
  v11.super_class = _WKTextManipulationExclusionRule;
  v6 = [(_WKTextManipulationExclusionRule *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_isExclusion = exclusion;
    if (element)
    {
      elementCopy = element;
    }

    m_ptr = v7->_elementName.m_ptr;
    v7->_elementName.m_ptr = element;
    if (m_ptr)
    {
    }
  }

  return v7;
}

- (id)initExclusion:(BOOL)exclusion forAttribute:(id)attribute value:(id)value
{
  v15.receiver = self;
  v15.super_class = _WKTextManipulationExclusionRule;
  v8 = [(_WKTextManipulationExclusionRule *)&v15 init];
  v9 = v8;
  if (v8)
  {
    v8->_isExclusion = exclusion;
    if (attribute)
    {
      attributeCopy = attribute;
    }

    m_ptr = v9->_attributeName.m_ptr;
    v9->_attributeName.m_ptr = attribute;
    if (m_ptr)
    {
    }

    if (value)
    {
      valueCopy = value;
    }

    v13 = v9->_attributeValue.m_ptr;
    v9->_attributeValue.m_ptr = value;
    if (v13)
    {
    }
  }

  return v9;
}

- (id)initExclusion:(BOOL)exclusion forClass:(id)class
{
  v11.receiver = self;
  v11.super_class = _WKTextManipulationExclusionRule;
  v6 = [(_WKTextManipulationExclusionRule *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_isExclusion = exclusion;
    if (class)
    {
      classCopy = class;
    }

    m_ptr = v7->_className.m_ptr;
    v7->_className.m_ptr = class;
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