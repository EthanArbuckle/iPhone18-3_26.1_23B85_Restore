@interface _WKArchiveExclusionRule
- (_WKArchiveExclusionRule)initWithElementLocalName:(id)a3 attributeLocalNames:(id)a4 attributeValues:(id)a5;
- (id).cxx_construct;
@end

@implementation _WKArchiveExclusionRule

- (_WKArchiveExclusionRule)initWithElementLocalName:(id)a3 attributeLocalNames:(id)a4 attributeValues:(id)a5
{
  v19.receiver = self;
  v19.super_class = _WKArchiveExclusionRule;
  v8 = [(_WKArchiveExclusionRule *)&v19 init];
  if (v8)
  {
    v9 = [a4 count];
    v10 = [a5 count];
    v11 = MEMORY[0x1E695D940];
    if (v9 != v10)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"attributeLocalNames and attributeValues must have same size"];
    }

    if (a3 | a4)
    {
      if (a3)
      {
        v12 = a3;
      }
    }

    else
    {
      [MEMORY[0x1E695DF30] raise:*v11 format:@"elementLocalName and attributeLocalNames cannot both be null"];
    }

    m_ptr = v8->_elementLocalName.m_ptr;
    v8->_elementLocalName.m_ptr = a3;
    if (m_ptr)
    {
    }

    if (a4)
    {
      v14 = a4;
    }

    v15 = v8->_attributeLocalNames.m_ptr;
    v8->_attributeLocalNames.m_ptr = a4;
    if (v15)
    {
    }

    if (a5)
    {
      v16 = a5;
    }

    v17 = v8->_attributeValues.m_ptr;
    v8->_attributeValues.m_ptr = a5;
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