@interface _WKArchiveExclusionRule
- (_WKArchiveExclusionRule)initWithElementLocalName:(id)name attributeLocalNames:(id)names attributeValues:(id)values;
- (id).cxx_construct;
@end

@implementation _WKArchiveExclusionRule

- (_WKArchiveExclusionRule)initWithElementLocalName:(id)name attributeLocalNames:(id)names attributeValues:(id)values
{
  v19.receiver = self;
  v19.super_class = _WKArchiveExclusionRule;
  v8 = [(_WKArchiveExclusionRule *)&v19 init];
  if (v8)
  {
    v9 = [names count];
    v10 = [values count];
    v11 = MEMORY[0x1E695D940];
    if (v9 != v10)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"attributeLocalNames and attributeValues must have same size"];
    }

    if (name | names)
    {
      if (name)
      {
        nameCopy = name;
      }
    }

    else
    {
      [MEMORY[0x1E695DF30] raise:*v11 format:@"elementLocalName and attributeLocalNames cannot both be null"];
    }

    m_ptr = v8->_elementLocalName.m_ptr;
    v8->_elementLocalName.m_ptr = name;
    if (m_ptr)
    {
    }

    if (names)
    {
      namesCopy = names;
    }

    v15 = v8->_attributeLocalNames.m_ptr;
    v8->_attributeLocalNames.m_ptr = names;
    if (v15)
    {
    }

    if (values)
    {
      valuesCopy = values;
    }

    v17 = v8->_attributeValues.m_ptr;
    v8->_attributeValues.m_ptr = values;
    if (v17)
    {
    }
  }

  return v8;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end